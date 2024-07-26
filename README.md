# homebrew-numero

This is a 3<sup>rd</sup> party tap for [Homebrew](https://brew.sh/). It provides formulae used by the engineering team at [Numero](https://numero.ai)

## Installation and usage

In order to use this tap, you need to install Homebrew.

Then, to run a default installation, run:

```bash
brew tap numeroai/numero
brew install numeroai/numero/dynamodb-local
```

## Testing

Installing the `dynamodb-local` formula should have set up a service to run as a background job.
Running `brew services list` should produce some output that includes `dynamodb-local` like this:

```
➜ brew services list
Name           Status  User     File
dynamodb-local started username ~/Library/LaunchAgents/homebrew.mxcl.dynamodb-local.plist
```

And should be writing log files to `cat /opt/homebrew/var/log/dynamodb-local.log`

```
➜ cat /opt/homebrew/var/log/dynamodb-local.log

Initializing DynamoDB Local with the following configuration:
Port:	8000
InMemory:	false
Version:	2.5.2
DbPath:	null
SharedDb:	false
shouldDelayTransientStatuses:	false
CorsParams:	null
```
