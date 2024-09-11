\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2024/09/11 v0.3 Resume]

\LoadClass[12pt]{article}

\usepackage[parfill=0pt]{parskip}
\usepackage[a4paper,left=10mm,right=10mm,top=13mm]{geometry}
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
        \textbf{#1} \hfill #2 \vspace{0.3mm} \\ \textit{#3} \hfill #4
        \begin{itemize}
            \vspace{-2mm}
            \setlength\itemsep{-1.8mm}
            \setlength\leftskip{-2mm}
    }
    { 
        \end{itemize}
        \smallskip
    }

\newenvironment{Section}[1][Section]
    {
        \subsection*{#1}
        \vspace{3pt}
        \hrule
        
    }
    {
        \vspace{-2mm}
    }

\newenvironment{Education}[3][Education]
    {
        \begin{addmargin}[2mm]{2mm}
            \textbf{#1} \hfill #2 \\ #3 \\
    }
    {
        \end{addmargin}
    }


\newenvironment{Skill}[2][Skill]
    {
        \begin{addmargin}[3mm]{3mm}
        \textbf{#1} \hspace{5mm} #2
    }
    {
        \end{addmargin}
        \vspace{-2mm}
    }