compareKeyRankOfPokerCardsHighCardPairTwoPairThreeOfAKindStraightFullHouseFourOfAKind(
    playerPlayingHands, arrayOfRanks) {
  List<int> playingHand = [];

  Map<dynamic, int> occurrences = {};

  int counterPair = 0;

  String hand = "";
  String handPairSimpleOrDouble = "";
  String handBrelanOrSquare = "";
  List<int> handNumber = [];
  int? handPairSimpleOrDoubleNumber = 0;
  int? handBrelanOrSquareNumber = 0;
  List<dynamic> rankPlayingHands =
      playerPlayingHands.map((x) => x["rank"]).toList();

  for (final rankPlayingHand in rankPlayingHands) {
    playingHand.add(((arrayOfRanks.indexOf(rankPlayingHand)) + 2));
  }

  playingHand.sort(((a, b) => b - a));
  for (final handNumber in playingHand) {
    occurrences[handNumber] = (occurrences[handNumber] ?? 0) + 1;
  }
  print('occurrences $occurrences');
  occurrences.forEach((element, count) {
    if (count >= 2) {
      if (count == 2) {
        counterPair++;
        if (counterPair == 1) {
          handPairSimpleOrDouble = 'one pair';
          handPairSimpleOrDoubleNumber = element * count;
        } else if (counterPair == 2) {
          handPairSimpleOrDouble = 'two pairs';
          handPairSimpleOrDoubleNumber = element * count;
        }
      } else if (count == 3) {
        handBrelanOrSquare = 'three of a kind';
        handBrelanOrSquareNumber = element * count;
      } else if (count == 4) {
        handBrelanOrSquare = 'four of a kind four';
        handBrelanOrSquareNumber = element * count;
      }
    }
  });
  if (handPairSimpleOrDouble == 'pair' &&
      handBrelanOrSquare == 'three of a kind') {
    hand = 'full house full hou';
    handNumber.add(handBrelanOrSquareNumber!);
    handNumber.add(handPairSimpleOrDoubleNumber!);
  } else if (handPairSimpleOrDouble == "") {
    hand = handBrelanOrSquare;
    handNumber.add(handBrelanOrSquareNumber!);
  } else {
    hand = handPairSimpleOrDouble;
    handNumber.add(handPairSimpleOrDoubleNumber!);
  }

  return <Object>[
    hand == "" ? playingHand : hand,
    occurrences,
    playingHand,
    handNumber
  ];
}
