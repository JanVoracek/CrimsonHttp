// Copyright (c) 2012 Solvr, Inc. All rights reserved.
//
// This open source software is governed by the license terms
// specified in the LICENSE file

part of log4dart_file;

/**
 * Appender that logs to a file
 */
class FileAppender implements Appender {
  FileAppender(this._path);

  void doAppend(String message) {
    // TODO inneficient to open file for each log message, however I am not aware of
    // any ways to register methods to be exectued when the program shuts down
    File file = new File(_path);
    file.openSync(FileMode.APPEND).writeString("$message\n");
  }

  final String _path;
}

