# CleanJunk
### Charles McGuinness (cmcguinness on github)

Clean out the Junk Mail folder on Mac OS X (aka macOS) Mail using JavaScript.

## Motivation

I get a lot of junk mail.  Probably 10x real mail.  Apple's Mail program is
good at finding it and moving it to the junk mail folder, but after a while,
it can really accumulate.  I'd like to not just mass-delete everything in
there; I still have the occasional piece of real email that lands in
junk.  But when I had over 10k junk mail items in there, I knew I was
never going to be able to review them all.

I tried creating filters in Mail that would clean it out, but I could
never get them to work.  Finally, I decided would use the scripting
system built into OS X (or macOS, by the time you read this).  And,
since I know JavaScript, I figured I'd use JS to do the work.

## Overview

The script you see here will run through every message in your junk
mail folder and delete any that match a pattern for the sender or
for the subject.  I discovered that spam almost always has a sender
that looks like a subject, and so even though they use a massive
number of email accounts, they tend to be from "Airline Tickets", or "Alcohol
Rehab Centers", etc.

The actual list reflects what I found in my junk folder, and I expect that
it will change over time.  So don't take my list as anything other than
useful examples.

Essentially, any line of code that looks like:
```
senders.push(/beverly hills/i);
```
means that it's adding a pattern for the sender (aka from) to spot as
being junk mail.  You can use any regular expression you wish, but
if you're not comfortable with regular expressions just replace
the text between the two / and you'll be fine.  If you have
punctuation in your pattern (for example, `.` or `$`), you'll want to
put a backslash `\` in front of it because those have special meaning.

You can add, subtract, or modify any of the `senders.push()` or `subjects.push()`
lines as you see fit.

## How it works

The code first connects to the Mail app and gets a list of junk mail messages,
and then builds up its list of patterns.

It loops through all of the patterns, and if any one of them match, it deletes
the junk mail message.

## Notes

If the Mail program refreshes while your script is running it seems to
cause an error.  No worries, just run it again.

The documentation for writing JavaScript scripts on macOS is not very complete,
and so this code is a result of experimentation not solid design.  So if
something seems quirky or odd in it, it probably  is not intentional.

If you run the program multiple times in quick succession, it seems to
find and re-delete previously deleted messages, so the count does not go down.
Quit and restart Mail to solve this.
