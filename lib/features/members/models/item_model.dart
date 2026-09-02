import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? imagePath;
  final String jpName;
  final String enName;
  final String sound;

  const ItemModel({
    this.imagePath,
    required this.jpName,
    required this.enName,
    required this.sound,
  });
  void playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
