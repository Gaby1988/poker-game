import 'dart:math';
import 'package:dart_application_1/high_card_pair_two_pair_three_of_a_kind_straight_full_house_four_of_a_kind.dart';

void main(List<String> arguments) {
  final random = Random();
  List<String> ranks = "2345678910TJQKA".split(RegExp(r'(?!0)'));
  List<String> symbols = "♠♣♥♦".split('');
 
  List<Map<String, String>> pokerCards = [];
  List<Map<String, String>> handPlayer1 = [];
  List<Map<String, String>> handPlayer2 = [];

  for (final symbol in symbols) {
    for (final rank in ranks) {
      pokerCards.add({"rank": rank, "symbol": symbol});
    }
  }

  List pokerCardsCopy = [...pokerCards];
  randomPokerCardsHand(cards, array) {
    final randomIndex = random.nextInt(cards.length);
    array.add(cards[randomIndex]);
    cards.removeAt(randomIndex);
  }

  for (int i = 0; i < 5; i++) {
    randomPokerCardsHand(pokerCardsCopy, handPlayer1);
    randomPokerCardsHand(pokerCardsCopy, handPlayer2);
  }

  var playerHandForGameOne =
      compareKeyRankOfPokerCardsHighCardPairTwoPairThreeOfAKindStraightFullHouseFourOfAKind(
          handPlayer1, ranks);
  var playerHandForGameTwo =
      compareKeyRankOfPokerCardsHighCardPairTwoPairThreeOfAKindStraightFullHouseFourOfAKind(
          handPlayer2, ranks);

  print('joueur1 $playerHandForGameOne');
  print('joueur2 $playerHandForGameTwo');
}
