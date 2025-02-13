# WTF

A webapp to define acronyms, words, and phrases. Especially useful in work environments
that use lots of non-standard, poorly-defined acronyms. Allows anyone to add their own
definitions and grow the knowledgebase.

## How to use

* Install [Redis](http://redis.io/) (2.0+)
* Setup virtualenv
<pre>
    virtualenv ./
    . bin/activate
    pip install -r requirements.txt
</pre>

* Run the Webapp
<pre>
    python webserver.py
</pre>

Open http://localhost:5000/ in a browser to view the application.

Note: WTF *will* work without Redis, but all the data be lost on each restart.

## Why [Saul](https://github.com/scommab) built [this](https://github.com/scommab/d-fine)

Two reasons:

1. To scratch an itch I had for an easy to use definition site.
1. To play around more with Flask and virtualenv.

## Why Earl is maintaining it

I've worked at a number of acronym-heavy tech companies. When I started at a new company
I'd keep a spreadsheet open so I could jot down company acronyms and (hopefully) what they
meant. Eventually the spreadsheets became Wiki pages. I like to think they're still in use
and being maintained by someone, somewhere.

When I worked at VMware someone turned me on to the "WTF" web site: wtf.eng.vmware.com.
WTF (What The d-Fine) was a web app that Saul had created when he worked there years earlier.
Every time we had an all-hands meeting I'd pull up WTF in a window so I could figure out WTF
upper management was talking about as they threw out three-letter acronyms with wild abandon.
It was also incredibly helpful for decoding email messages and deciphering our public-facing
docs -- which often used acronyms without defining them.

When Broadcom bought VMware and shut down all of our old infrastructure I made sure that WTF
was migrated and preserved. It was far too valuable to be lost.

### TODO

* Switch back to using cdnjs.com for the javascript files
* Fix the date/time
* Maybe add a fall back to a standard dictionary site
