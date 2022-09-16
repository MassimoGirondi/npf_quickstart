# A quick start on NPF

Just some examples and skeleton code that I use in my projects.

The idea is that you have a common .npf file that includes many other, and you invoke it with `run_npf_*.sh` helpers.
So that you have one helper for any experiment, but only one .npf script for all experiments that are closely related.

In the script I reference to a npf repository in the home folder, but you can replace that with the simple `npf-compare` installed with pip3.


# Fastclick

The `simple_fastclick.npf` test is a toy example on FastClick and how you can manipulate it from NPF. Start from `run_npf_forwarder.sh` as a base script to run it. The NPF repository contains more advanced modules for traffic generation and benchmarking.

In this example, no real `repo` is used, but only a local one. You may want to use `fastclick` in your command line to invoke the upstream version, or to have a custom `fastclick.repo` file in the repo folder, pointing either to a local folder or to the remote repository reachable with `git`.


# Further documentation

See https://npf.readthedocs.io for more documentation, and refer to the NPF repository for the source code and getting more examples at https://github.com/tbarbette/npf


# License

The code of this repository is licensed under the Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)  License.

Feel free to use it in your projects!
