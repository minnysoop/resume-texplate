\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/08/17 v0.1 Resume]

\LoadClass[12pt]{article}

\usepackage[parfill=0pt]{parskip}
\usepackage[a4paper,left=20mm,right=20mm,top=15mm]{geometry}
\usepackage{nopageno}
\usepackage{scrextend}
\nofiles

\newenvironment{Introduction}[4][Introduction] 
    {
        \begin{center}
            \textbf{\MakeUppercase{\Large #1}} \medskip \\ #2 \smallskip \\ #3 $\cdot$ #4
        \end{center}
    }
    {}

\newenvironment{Experience}[4][Experience]
    {
        \textbf{#1} \hfill #2 \vspace{0.5mm} \\ \textit{#3} \hfill #4
        \begin{itemize}
            \vspace{-1mm}
            \setlength\itemsep{-1mm}
    }
    { 
        \end{itemize}
        \smallskip
    }

\newenvironment{Section}[1][Section]
    {
        \subsection*{#1}
        \vspace{4pt}
        \hrule
        \vspace{4pt}
    }
    {

    }

\newenvironment{Education}[3][Education]
    {
        \begin{addmargin}[5mm]{5mm}
            \textbf{#1} \hfill #2 \\ #3 \\
    }
    {
        \end{addmargin}
    }


\newenvironment{Skill}[2][Skill]
    {
        \begin{addmargin}[5mm]{5mm}
        \textbf{#1} \hspace{5mm} #2
    }
    {
        \end{addmargin}
    }