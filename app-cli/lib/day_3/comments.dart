void singleLineComments(){
  // TODO: refactor into an AbstractLlamaGreetingFactory?
  print('Welcome to my Llama farm!');
}

void multiLineComments() {
  /*
   * This is a lot of work. Consider raising chickens.

  Llama larry = Llama();
  larry.feed();
  larry.exercise();
  larry.clean();
   */
}

// Documentation Comments:

/// A domesticated South American camelid (Lama glama).
/// 
/// Andean cultures ...
/// so don't forget to [feed] them some [Food].
class Llama {

  String? name;

  /// Feeds your llama [food].
  /// 
  /// The typical llama eats one bale of hay per week.
  void feed(Food food){
    // ...
  }

  /// Exercises your llama with an [activity] for
  /// [timeLimit] minutes.
  void exercise(Activity activity, int timeLimit){
    // ...
  }

}