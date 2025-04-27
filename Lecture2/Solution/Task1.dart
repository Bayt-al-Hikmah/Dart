void main(){
    // 1
    String word = "Developer";
    print(word[0]);
    print(word.toUpperCase());
    // 2
    String phrase = "I love Python";
    phrase = phrase.replaceAll("Python","Dart");
    print(phrase);
    // 3
    String sentence = "Learning Dart is fun";
    print(sentence.contains("Dart"));
    print(sentence.length);

}