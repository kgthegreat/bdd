Feature: codebreaker submits guess
  As a code breaker
  I should be able to submit a guess of four numbers and get a mark from the system.

  Marks consist of + and - signs. I get a + for every number guessed at the same position as the code.
  I get a - sign for every correct number guessed regardless of the position.
  Positions of + and - does not have any bearing on the correctness.

Scenario Outline: submit guess
  Given the secret code is "<code>"
  When I guess "<guess>"
  Then the mark should be "<mark>"


  Scenarios: no matches
    | code | guess | mark |
    | 1234 | 5678  |      |

  Scenarios: one number correct
    | code | guess | mark |
    | 1234 | 1678  | +    |
    | 1234 | 2678  | -    |

  Scenarios: two numbers correct
    | code | guess | mark |
    | 1234 | 1255  | ++   |
    | 1234 | 1355  | +-   |
    | 1234 | 3455  | --   |

  Scenarios: three numbers matches
    | code | guess | mark |
    | 1234 | 1235  | +++  |
    | 1234 | 1245  | ++-  |
    | 1234 | 1325  | +--  |
    | 1234 | 2345  | ---  |

  Scenarios: all matches
    | code | guess | mark |
    | 1234 | 1234  | ++++ |
    | 1234 | 1243  | ++-- |
    | 1234 | 1342  | +--- |
    | 1234 | 4321  | ---- |





