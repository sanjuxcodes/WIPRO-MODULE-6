#!/bin/sh
cd "$(dirname "$0")"
mkdir -p out
javac -d out $(find src -name "*.java") || exit 1
case "$1" in
  test)  java -cp out ivi.test.IviTests ;;
  shots) java -Djava.awt.headless=true -cp out ivi.test.ScreenshotTool screenshots ;;
  *)     java -cp out ivi.ui.MainApp ;;
esac
