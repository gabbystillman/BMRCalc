/*
 * This is just a demo program to get started learning
 * how to program in Objective-C.
 *
 * To compile from the command line
 * open a terminal and use the following command.
 * cc anagram.m -framework Foundation -o anagram
 *
 * To run
 * ./anagram /usr/share/dict/words
 */

#import <Foundation/Foundation.h>

// This function is needed for the call to qicksort (qsort_b).
int char_cmp(const void *a, const void *b){
  return *(char*)a - *(char*)b;
}

/*
 * This is a category. It extends the class NSString
 * by adding a new method named 'sorted'.
 */
@implementation NSString (SortExtension)

-(NSString *) sorted
{
  NSUInteger length = [self length];
  unichar *chars = (unichar *)calloc(sizeof(unichar), length);

  [self getCharacters: chars range: NSMakeRange(0, length)];
  
  qsort_b(chars, length, sizeof(unichar), ^(const void *l, const void *r) {
    unichar left = *(unichar *)l;
    unichar right = *(unichar *)r;
    return (int)(left - right);
  });

  // recreate
  NSString *sorted = [NSString stringWithCharacters:chars length:length];
  // clean-up
  free(chars);

  return sorted;
}
@end

@interface Anagram : NSObject
@property (retain, nonatomic) NSString* code;
@property (retain, nonatomic) NSString* word;

-(instancetype) initWithWord: (NSString*) aWord;

-(NSComparisonResult) compare: (Anagram*) otherWord;

-(NSString*) description;
@end

@implementation Anagram
@synthesize code;
@synthesize word;

-(instancetype) initWithWord: (NSString*) aWord
{
  self = [super init];
  if( self ){
    word = [aWord retain];
    code = [[word sorted] retain];
  }
  return self;
}

-(NSComparisonResult) compare: (Anagram*) otherWord
{
  return [self.code compare: otherWord.code];
}

-(bool) isTheSameAs: (Anagram*) otherWord
{
  return [self.code isEqualTo: otherWord.code];
}

-(NSString*) description
{
  return [NSString stringWithFormat: @"%@ (%@)", self.word, self.code];
}
@end

/*
 * Removes the trailing carriage return character at the end of
 * the char* (c string) passed in.
 */
void chomp(char *s){
  int i = 0;
  while( s[i] != '\0' ){
    if(s[i] == '\n'){
      s[i] = '\0';
      break;  
    }
    i++;
  }
}

/*
 * The main function. The program's entry point.
 */
int main(int argc, char **argv){
  @autoreleasepool{
    char buffer[256];
    int max = -1;
    int index = -1;
    int difference;
    FILE *fh = fopen(argv[1], "r");
    assert(fh);
    NSMutableArray* list = [[NSMutableArray alloc] init];
    while( fgets(buffer, 256, fh) != NULL){
      chomp(buffer);
      [list addObject: [[Anagram alloc] initWithWord:[NSString stringWithCString: buffer encoding: NSASCIIStringEncoding]]];
    }

    NSArray* words = [list sortedArrayUsingSelector: @selector(compare:)];

    int i = 0;
    int j = 1;
    while(i < [words count] - 1 && j < [words count]){
      if( [[words objectAtIndex: i] isTheSameAs: [words objectAtIndex: j]] == YES){
        j++;
      }else{
        difference = j - i;
        if( difference > max){
          max = difference;
          index = i;
        }
        i = j;
        j++;
      }
    }
    difference = j - i;
    if( difference > max){
      max = difference;
      index = i;
    }

    NSLog(@"max: %d", max);
    for(int i = 0; i < max; i++ ){
      NSLog(@"%@", [[words objectAtIndex: index + i] description]);
    }
  }
  return 0;
}