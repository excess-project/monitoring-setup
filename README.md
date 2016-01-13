# EXCESS ATOM Monitoring Setup Scripts

> ATOM enables users to monitor applications at run-time with ease. This repository provides new users with scripts that simplify the installation of the monitoring environment.


## Motivation
In order to ease the process of using the EXCESS ATOM Monitoring Framework, we are providing three simple scripts that help you to download, install, start and stop monitoring on your local machine.


## Prerequisites

Before you can proceed, please clone this repository:

```bash
git clone git://github.com/excess-project/monitoring-setup.git
```

## Scripts

This repository provides the following Shell scripts (tested with Unix systems):

| Script               | Purpose                                                                       |
| -------------------- | ----------------------------------------------------------------------------- |
| <pre>setup.sh</pre>  | Downloads and install components from monitoring-server and monitoring-agent  |
| <pre>start.sh</pre>  | Starts components: elasticsearch, server, and monitoring agent                |
| <pre>stop.sh</pre>   | Stops running monitoring services including elasticsearch                     |


## Acknowledgment

This project is realized through [EXCESS][excess]. EXCESS is funded by the EU 7th
Framework Programme (FP7/2013-2016) under grant agreement number 611183. We are
also collaborating with the European project [DreamCloud][dreamcloud].


## Contributing
Find a bug? Have a feature request?
Please [create](https://github.com/excess-project/monitoring-setup/website/issues) an issue.


## Main Contributors

**Dennis Hoppe, HLRS**
+ [github/hopped](https://github.com/hopped)

**Fangli Pi, HLRS**
+ [github/hpcfapix](https://github.com/hpcfapix)

**Dmitry Khabi, HLRS**

**Yosandra Sandoval, HLRS**

**Anthony Sulisto, HLRS**


## Release History

| Date        | Version | Comment          |
| ----------- | ------- | ---------------- |
| 2016-01-13  | 1.0     | Public release.  |


## License
Copyright (C) 2016 University of Stuttgart

[Apache License v2](LICENSE).


[agent]: https://github.com/excess-project/monitoring-agent
[excess]: http://www.excess-project.eu
[dreamcloud]: http://www.dreamcloud-project.eu
