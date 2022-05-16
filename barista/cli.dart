#!/usr/bin/env dart

void main(List<String> args) {
  if (args.isEmpty) {
    print("no input, no output. it's that simple");
    return;
  }
  switch(args[0]) {
    case "test":
      print(args.asMap().containsKey(1) ? args[1] : "hello!");
      break;
  }
}

class Commands {
    void init() {}

    void analyse() {}

    void compile() {}

    void install() {}

    void scope() {}

    void test() {}
}

class Tools {
    
}
//echo 'export PATH="$PATH:/usr/lib/mochaccino/bin"' >> ~/.profile