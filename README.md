Rebuild this site
learnhowtoprogram.com is powered by a fairly simple Rails app. Rebuild it yourself.

--Done-- First, work on CRUD/L functionality for lessons. A lesson has a name and some text content. Don't worry about videos and cheat sheets.

Now, we need to get the order of the lessons in. Each lesson has a number. When you click Next lesson at the bottom of the page, it goes to the lesson with the next-highest number.

Also, take care of the Previous lesson link.

Then, add sections: a section has many lessons. List out sections in the table of contents, along with the lessons inside them. Make the table of contents completely expanded - don't worry about the JavaScript that lets you expand and collapse sections. When you create a lesson, provide a drop-down list of all the sections, so that the user can choose which section it's in. (If you didn't get to drop-downs before, do a web search for html drop-down mdn to learn how to make them in HTML.)
Next, add chapters: a chapter has many sections.
Make sure that the table of contents displays the lessons in the order of their number attribute. Use a default scope and the Active Record order method. Don't know what that means? I bet you can figure it out!
