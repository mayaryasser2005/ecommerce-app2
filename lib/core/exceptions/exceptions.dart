abstract class RouteExceptions {
  String message;

  RouteExceptions(this.message);

  @override
  String toString() {
    return message;
  }
}

class RouteLocalExceptions extends RouteExceptions {
  RouteLocalExceptions(super.message);

  @override
  String toString() {
    return super.message;
  }
}

class RouteRemoteExceptions extends RouteExceptions {
  RouteRemoteExceptions(super.message);

  @override
  String toString() {
    return super.message;
  }
}
