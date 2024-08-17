# Docs

### Set Up
Begin by downloading the `resume.cls` file and place in the same directory as your resume tex file. In your resume tex file, begin by initilizing `resume` as your document class.
```
\documentclass{resume}
\begin{document}

\end{document}
```
Everything we talk about in the rest of this tutorial goes in between the `\begin{document}` and `\end{document}`.

### How This Was Built
Resumes are presented chronologically. So, we can build them as if we're stacking lego blocks. Here's how it works. A Resume contains multiple `Section`s. And a `Section` contains multiple elements: `Education`, `Skill`, `Experience`.

NOTE: Just because an element is named `Experience` doesen't mean you only use it for work experiences. It's super flexible and I'll show you how you can tailor it to show something like `Project`s.

## Classes 
### Header (Class)
The idea behind a header is to introduce yourself. So, we start by creating an `Introduction` class with the following required arguments. 
```
\begin{Introduction}[Your Name]{Full Address}{Email}{Phone Number}

\end{Introduction}
```
If you want to add a summary about yourself, you can directly add Tex content in between `\begin{Introduction}` and `\end{Introduction}`. But, it's optional.

### Section (Class)
Ideally, good resumes maintain good structure by organizing information into sections. So, let's create a `Section` class with the following arguments.
```
\begin{Section}[Section Title]

\end{Section}
```
You could theoretically leave the `[Section Title]` blank like this `[]`. But, then it'll just be empty and that's a little sad.

## Elements 
Now, we'll talk about elements. Remember these things go inside the `Section` classes. 

### Skill (Element)
Skills are probably the most important for the job right? Let's create a `Skill` element. Let's use a concrete example for this one.
```
\begin{Skill}[Languages]{Python,C/C++,Java}
\end{Skill}
```
Now, if you have other skills you want to show like, say, frameworks. Then you can create another one right below it!
```
\begin{Section}[Relevant Skills]
\begin{Skill}[Languages]{Python,C/C++,Java}
\end{Skill}
\begin{Skill}[Frameworks/Libraries]{Django,React,Angular}
\end{Skill}
\end{Section}
```
### Education (Element)
Nowadays, most high-paying jobs require some amount of education. Let's show them, we deserve that raise! Start by creating an `Education` element. Again, we'll use a concrete example
```
\begin{Education}[University of Tulsa]{May 2017}{Bachelors's in Psychophysics}

\end{Education}
```
I feel this is the bare minimum of education you should put. But, maybe you don't have much experience and want to add a little more stuff (i.e. awards, gpa, activities, etc.). In this case, you may add these as follows.
```
\begin{Education}[University of Tulsa]{May 2017}{Bachelors's in Psychophysics}
GPA: 3.32 \\
Activities: Club Volleyball, Cheese Club
\end{Education}
```
### Experience (Element)
Saved the best for last. Our experiences make up who we are. Start by creating an `Experience` element. Again, we'll use another concrete example. 
```
\begin{Experience}[Research Scientist]{June 2019 - Present}{Microsoft}{Remote}

\item Led the development of cutting-edge machine learning algorithms that improved predictive accuracy by 25 percent, contributing to Microsoft's AI product advancements.

\item Published 10+ peer-reviewed papers in top-tier journals and conferences (e.g., NeurIPS, ICML, CVPR) on topics ranging from deep learning to computer vision, influencing industry practices and academic research.
\end{Experience}
```
As promised let me show you how can tailor the `Experience` element to create `Project`s. Look at the following.
```
\begin{Section}[Projects]
\begin{Experience}[Minesweeper]{Sep 2019}{Developer}{}
\item Created Minsweeper using DrRacket using the Beginning Student Language (BSL)
\end{Experience}
\end{Section}
```
Noticed how I left the last argument blank? You can't always do this, but this is a special case you can. Just experiment around. Mix elements and do as you please. This entire template is basically just formatting.

## Miscellaneous
Here are some other snippets you might wanna use:

### Publications
```
\begin{Section}[Publications]
\begin{itemize}
\item "If pigs can fly then 2 + 2 = 1,782". \textit{The Journal of a Jumper Cable}
\end{itemize}
\end{Section}
```

### Presentations
```
\begin{Section}[Presentations]
\begin{itemize}
\item International Conference on Psychology, Counselling and Education, New Era University, Philippines.
August 2018. Aaron Min Soo Kang. ”The correlation between genetic markers and addictive behaviours: A meta-analysis” (poster).
\end{itemize}
\end{Section}
```

