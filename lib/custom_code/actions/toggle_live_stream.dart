// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';

final AudioPlayer player = AudioPlayer();

Future toggleLiveStream(bool isPlaying) async {
  if (isPlaying) {
    await player.pause();
  } else {
    if (player.audioSource == null) {
      await player.setUrl('YOUR_MIXLR_STREAM_URL');
    }

    await player.play();
  }
}
