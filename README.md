# Vagabond

Vagabond is currently a work-in-progress. Features may be missing or subject to change.

## What it is

Vagabond — until the 0.1.0 release — is a playground for a few different approaches for integration testing of infrastructure. We're still determining how best to handle a lot of things with the goal of making  Vagabond very modular so we can re-use parts of it for other, similar projects (think Vagabond but on EC2 / Rackspace).

When we started on this particular revision of the code we pretty much threw out the old code because it made some fundamentally wrong assumptions and wouldn't have worked going forward, so all of this is new.

## What it isn't

Stable (yet).

Finished (yet).

## That Said...

We'd love some of your help or input!

## Developing

1. Install VirtualBox.

2. Install Bundler.

3. Run `bundle install`

4. Run `rake vagabond:spec`