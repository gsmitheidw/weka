# Weka Chocolatey.org package Recipe

## Weka Machine learning software

![Weka Logo](https://github.com/gsmitheidw/weka/blob/a61fab09f49ef13c6af8016809e0600a884d7438/weka.png "Weka Logo")
Weka is a collection of machine learning algorithms for solving real-world data mining problems. It is written in Java and runs on almost any platform. The algorithms can either be applied directly to a dataset or called from your own Java code.

Features:
* machine learning
* data mining
* preprocessing
* classification
* regression
* clustering
* association rules
* attribute selection
* experiments
* workflow
* visualization

---
## Installation

Download nupkg from [here](https://github.com/gsmitheidw/weka/releases/download/1.0/weka.3.8.5.nupkg) and install using

`choco install weka -s <path>` -y

where <path> is the folder you downloaded the file

NOTE: Java JRE or JDK is a pre-requisite. The nupkg will not enforce any specific dependency because of the range
of Java implementations available. 

---

## Build
This a repository source for building Weka nupkg for the Chocolatey Package Manager for Windows. 
To build this:

1. Install git and [chocolatey](https://www.chocolatey.org)
2. Clone this repo with `git clone`
3. Package source code to nupkg with `choco pack`
4. Install using: choco install weka --source <current folder where nupkg is>

