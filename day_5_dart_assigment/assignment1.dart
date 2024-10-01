typedef WordDef = Map<String, String>;

class Dictionary {
  WordDef word = {};

  void add(String term, String definition) {
    word[term] = definition;
  }

  String? get(String term) {
    return word[term];
  }

  void delete(String term) {
    word.remove(term);
  }

  void update(String term, String newDefinition) {
    if (word.containsKey(term)) {
      word[term] = newDefinition;
    }
  }

  void showAll() {
    word.forEach((term, definition) {
      print('$term: $definition');
    });
  }

  int count() {
    return word.length;
  }

  void upsert(String term, String definition) {
    if (word.containsKey(term)) {
      update(term, definition);
      return;
    } else {
      add(term, definition);
    }
  }

  bool exists(String term) {
    return word.containsKey(term);
  }

  void bulkAdd(List<WordDef> terms) {
    for (var words in terms) {
      add(words['term']!, words['definition']!);
    }
  }

  void bulkDelete(List<String> terms) {
    for (var term in terms) {
      delete(term);
    }
  }
}

void main() {
  var dictionary = Dictionary();
}
