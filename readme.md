# Workshop 0: Portrait

Create an [interactive portrait](https://cs.uwaterloo.ca/~dvogel/csfine383w18/portrait_web/) of yourself.

## Goals

* GitLab setup
* Processing install with libraries
* Test camera capture
* Make something creative to warm up your coding

# Pre-workshop Set Up

Complete this set up following __before__ the Workshop 0 class.

## Processing

1. Download Processing 3.3.6 [https://www.processing.org/]()
	* Test your installation by running an example using menu `File/Examples...`
2. Install Video library
	* In Processing, open the Contribution Manager using the menu `Tools/Add Tool...`
	* Click on "Libraries" tab
	* search for "Video" and click "Install"


## Gitlab and Git

1. Become a member of the course gitlab group.
* [https://git.uwaterloo.ca/csfine383w18]()

2. Get access to the workshop code.
 * [https://git.uwaterloo.ca/csfine383w18/workshops]()

3. Install git on your local machine. 
 * [Official git downloads](https://git-scm.com/downloads) 
 * [Atlassian tutorial for installing git](https://www.atlassian.com/git/tutorials/install-git) (with other install options like [Homebrew](https://brew.sh/) on macOS)

## Get the workshop code

1. It's easiest if you clone the code into your Processing folder. 
 * Open Processing Preferences to find out where your "Processing Sketchbook" lives (you can change the location too)

2. Create a directory for all your workshop code. 

3. Clone the workshop repository to pull the code into this directory.
 * In a terminal or command line, change to the workshop code directory you created in step 2.
 * Clone the gitlab workshop repo with a command like this (replace username with your Quest login name, e.g. jdoe.git):
`git clone https://username@git.uwaterloo.ca/git.uwaterloo.ca/csfine383w18/workshops.git`

> NOTE: Please don't push changes from your copy of the course code back to the repo. We need to fix permissions and show you how to create your own repos. The best way to handle this is to treat your local copy of the couse workshop code as "readonly" and then create a different place to put your own code.

> NOTE: **If you get stuck with using git,** then just grab the code using the "Download Code" button near the upper right of the project page. We will help you get git working on Tue, for now just get the code.

### Note about Markdown files

You’ll notice that our code repo has `readme.md` files. These are just text files that can be opened in any text editor. However, these are also special text files that can be rendered with nice looking headings, links, even images. The `md` means “markdown”, which is the language used to indicate what’s a heading, a bullet, a link, etc. Think of markdown as a really simple format for HTML, that can be easily read as plain text.  

If you want to view rendered version of `md` files on your own computer, try [_Markoff_, a free markdown viewer for OSX](https://robots.thoughtbot.com/markoff-free-markdown-previewer).


# In-Class Workshop

You'll find all the code for Workshop 0 in the `w0_portrait/` directory. If you put this directory in the "Processing Sketchbook" directory, then you can open it using the `File/Sketchbook...` menu. Otherwise navigate the folder and double click the `.pde` file.

## Recorder

The `recorder` sketch is used for recording a sequence of frames to use in your main "portrait" program. It uses the Video library to capture frames.

* Run the sketch and see if your video works. If not, see the code for ideas about adjustments to work (see comments). 
* Pressing space saves a single frame, hold it down to capture a sequence.
* By default, it saves 30 frames.


## Portrait

The `portrait*` sketches are what you'll use as a starting point. Each loads the frames saved with recorder and then presents the frames in some varied way based on mouse position. 

## Gif Animation

The `portrait1` sketch shows how to generate a GIF animation from Processing. You can integrate this code into the other portrait sketches if you use them as a starting point.

It uses the [GifAnimation library](https://github.com/01010101/GifAnimation).

## Portrait Web

The `portrait_web` sketch is a [P5.js](https://p5js.org/) version that can run in web pages. This is an optional extension for you to try. Note the code changes from Java to JavaScript and in general, the libraries are very different. 

For web versions, the directory of frames must be in the sketch folder.

I found this [Processing Java to P5.js converter](https://github.com/joemckay5/Processing-to-p5.js-converter). Download the code, unzip it, and open index.html into your browser. I'm not sure it fully works though.

# Exercise

* Modify one of the `portrait` sketches to load and display the frames in a new way. The sketch should use simple mouse movement to make it interactive (just `mouseX` and `mouseY`). 

* Create your own gitlab project and push your code.

* Generate a GIF animation by integrating the `make_gif` code into your portrait code. 

* __Optional:__ convert your sketch to P5.js using the `portrait_web` example, or try the automatic converter code above.

## What to submit

Post your GIF animation to Learn with a link to you code.







