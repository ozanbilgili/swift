// RUN: %swift -parse -verify %s

class C {

#if os(iOS)
	func foo() {}
} // expected-error{{expected declaration}} expected-error{{expected #else or #endif at end of configuration block}}
#else
	func bar() {}
	func baz() {}
} // expected-error{{expected declaration}}
#endif
// expected-error@+1{{expected declaration}}
