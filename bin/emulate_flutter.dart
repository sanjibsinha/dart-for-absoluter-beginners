void main(List<String> args) {
  runApp(App());
}

void runApp(App app) => app.build();

class App {
  void build() {
    print('object');
  }
}
