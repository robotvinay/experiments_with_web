class StringSearch {
  StringSearch(this.input, this.searchTerm);

  /// Specify the input list.
  ///
  /// For instance,`['Hey', 'there']`
  final List<String> input;

  /// Search term should be of length 2 or more
  final String searchTerm;

  List<String> relevantResults() {
    // Search term should be of length 2 or more
    if (searchTerm.length < 2) {
      return [];
    }

    input.retainWhere((item) {
      return item.toLowerCase().contains(searchTerm.toLowerCase());
    });

    return input;
  }
}
