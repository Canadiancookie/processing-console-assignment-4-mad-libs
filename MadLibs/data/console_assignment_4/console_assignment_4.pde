/*
 * Processing Console Assignment 4
 * by Brayden S.
 * 
 * Mad libs with poems and strings
 * 
 */
 
void setup() {
  //strings for poem, nouns, verbs, adjectives
  String poem[] = loadStrings("poem.txt");
  String[] nouns = loadStrings("nouns.txt");
  String[] verbs = loadStrings("verbs.txt");
  String[] adjectives = loadStrings("adjectives.txt");
  
  //array for poem
  int i;
  for (i = 0 ; i < poem.length; i++) {
    int n = int(random(nouns.length -1));
    
    //replacing specified poem.txt words with random nouns, verbs, and adjectives
    poem[i] = poem[i].replaceAll("<noun>", nouns[n]);
    poem[i] = poem[i].replaceAll("<verb>", nouns[n]);
    poem[i] = poem[i].replaceAll("<adjective>", nouns[n]);
    
    //printing poem with modified words
    println(poem[i]);
  }
}

void draw() {

}
