abstract class RouteFailuers {
  String message;

  RouteFailuers(this.message);

  @override
  String toString() {
    return message;
  }
}

class RouteLocalFailuers extends RouteFailuers {
  RouteLocalFailuers(super.message);

  @override
  String toString() {
    return super.message;
  }
}

class RouteRemoteFailuers extends RouteFailuers {
  RouteRemoteFailuers(super.message);

  @override
  String toString() {
    return super.message;
  }
}
