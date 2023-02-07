# scoped_model_hello_world

A new Flutter project, upgraded to demostrate the use of the 'scoped_model' package.
The original code came from Nick Manning's mentoring website
https://fluttercrashcourse.com/
and in particular, the tuorial
https://fluttercrashcourse.com/blog/scoped-model-goto.

## Getting Started

This project converts the Flutter application generated 
by "flutter create scoped_model_hello_world" to use scoped_model.

The scoped_model package is [here](https://pub.dev/packages/scoped_model).  I upgraded Nick's example using v2.0.0.

This example is an enhancement of the original example in the package.  In particular:

- The 'increment()' function in the model class of the packages example is called directly from ```onpressed``` action and does not call ```set_state``` anywhere, whereas the others both have a subroutine (_incrementCounter) called from ```onpressed``` which then calls the model.increment() function.

- The Crash Course example increments 3 counters simultaneously, showing how one (scoped) model can contain several submodels (which could be different.)


For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
