/*
 * Processing Console Assignment 4
 * by Brayden S.
 * 
 * Mad libs with poems and strings
 * 
 */
 
void setup() {
  // Load the poem
  // Load verbs
  // Load nouns
  // Lood adjectives
  // Process each line in the poem
  // Do something with entry i...
  String poem[] = loadStrings("poem.txt");
  String[] nouns = loadStrings("nouns.txt");
  String[] verbs = loadStrings("verbs.txt");
  String[] adjectives = loadStrings("adjectives.txt");
  int i;
  for (i = 0 ; i < poem.length; i++) {
    int n = int(random(nouns.length -1));
    poem[i] = poem[i].replaceAll("<noun>", nouns[n]);
    poem[i] = poem[i].replaceAll("<verb>", nouns[n]);
    poem[i] = poem[i].replaceAll("<adjective>", nouns[n]);
    println(poem[i]);
  }
  
  

}

void draw() {

}
