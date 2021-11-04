

ASP.NET CORE WEB APP project running on a Windows server. 

The site on IIS and running at port 5100.

the site "מפולבש" to IIS web and you run it on your browser.


steps:
PART ONE:
1. download the repostitory to your computer. 
2. open the project with VS and rebuild it.
3. publish your project ( right-click on your porject name,and click Publish..,pick FOLDER option and next,
    and after choose your dirctory and finish.(you need to see text "READY TO PUBLISH")
    next you need to press on PUBLISH BUTTON. 

PART TWO:
1. now open your windows server with "REMOTE DESKTOP CONNECTION" (put your username,ip and password and connect to server.)
2. add IIS to your windows server 
 
https://www.microsoft.com/en-us/download/details.aspx?id=48264

https://www.lansweeper.com/knowledgebase/how-to-install-iis/


3. Create APPLICATION POOL (right click on APPLICTIONS POOLS, choose ADD APPLICTION POOL, give a name, and select in .NET CLR version the "no managed code" option
    for this project, and click ok)
4. Create Sites (right click on SITES, choose ADD WEBSITE , give a name and choose in Appliction pool the appliction pool you just create now.
   and selcet the path you want your website will be there,change the port to 5100(you can change it to want you want), and click ok.
5. now you need to copy your PUBLISH FOLDER to your WEBSITE FOLDER(Just as it sounds) 
   but before click on your appliction and click stop(now you can copy files to your web folder without error).
6. start your pool applictions and go to your WEBSITE URL.

GOOD LUCK!!
    

