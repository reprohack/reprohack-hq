# Organiser Instructions

The most important preparation to run a Reprohack is to collate a paper list for participants to choose from. Inviting contributions from authors requires a form through which they can submit details of their papers and a web page to present the paper list. A way of collecting and communicating particpant feedback to authors is also required.

**We are working to make materials more reusable and easier to reproduce to make ReproHacks easy to run and scale.** 

### Current state of ReproHack materials & templates

The current approach uses a combination of `Rmarkdown`, `shiny` and googledocs to compile a list of papers and collect feedback for the authors. It also uses a repository on `GitHub` to run the event on the day. This approach comes with limitations:

- Requirement to authenticate with googledocs
- Requirement to have a shinyapps.io account or access to a shiny server/institutional shinyapps.io account. Although it is easy to set up a shinyapps.io account, there is a cap on the amount of traffic to the app allowed in the free account and upgrading the subscription to run an event might be required. It is also slow to load.
- Currently, distributing feedback to the authors is not automated, although it could be set up as a js script attached to the feedback googlesheet
- Overall, the materials feel like they are too spread out.

As such we well be developing a system that is fully open and relies solely on GitHub for compiling and serving paper lists as well as tracking reproductions and participant feedback. In the meantime, however, the templates for running a ReproHack using the current method are available in the [**`reprohack-template-shiny`**](https://github.com/reprohack/reprohack-template-shiny) repo.

**Examples of the materials used for the CarpentryConnect Manchester ReproHack:**
- [Paper list](https://sheffield-university.shinyapps.io/ReproHack_CCMcr/)
- [Event repo](https://github.com/reprohack/reprohack-2019-06-27)
- [Paper submission form](https://docs.google.com/forms/d/e/1FAIpQLSeNuSAQCHa9spdUh3iYfONLms4Qlg1r6iECZMCXaS_l1m79bw/viewform)
- [Author feedback form](https://docs.google.com/forms/d/e/1FAIpQLSembkNEg3qN0SKxmf6cR4z2Cla47pOhfZ9GCKh5J9KUi1wpcw/viewform)


## Organiser checklist

To make use of the current materials and templates to organise a ReproHack, please follow this organiser template. Feel free to reach out if anything is unclear. The workflow is easiest through [Rstudio](https://www.rstudio.com/)

- [ ] Copy template repository [**`reprohack-template-shiny`**](https://github.com/reprohack/reprohack-template-shiny). Name the repository: `reprohack-<location>-YYYY-MM-DD`.
- [ ] Make copies of the two googleforms, one for collecting paper submissions and one for collecting feedback
    + [paper submission form](https://drive.google.com/open?id=1-Q-dQQu47ytCg2Z7F99hzCSxewLCbPUi8UlZWg0JYjI)
    + [author feedback form](https://drive.google.com/open?id=1KRooOAtbmOzIES1h2T9Gvt7AaPFLDS0BQUZRiimJZSU)
- [ ] Create a hackpad (eg etherpad, hack.md, googledoc) for collaborative notetaking at the event (optional)
    + you can use this [hackmd.io template](https://hackmd.io/@annakrystalli/reprohack-hackpad-tmpl) if you wish
- [ ] Get geographical coordinates for venue. 
- [ ] Complete parameters in YAML header of `index.Rmd` & `README.Rmd`. 
    - [ ] Knit `README.Rmd` and push to GitHub.
    - [ ] [Deploy](https://bookdown.org/yihui/rmarkdown/shiny-deploy.html) `index.Rmd` on shinyapps.io. (More on [getting started with shinyapps.io](https://shiny.rstudio.com/articles/shinyapps.html)). Running the document also prompts you to authenticate with google which produces an `.httr-oauth` authorisation token. You will need to deploy:
      - `index.Rmd` and 
      - `.httr-oauth` (required to access the paper list on googlesheets)
      - `reprohack-css` 
      - any other assets used eg if an event banner is being used.
      You can also deploy programmatically with the following example code:
      ```r 
      rsconnect::deployApp(appName = "ReproHack_CCMcr",
                     appTitle = "ReproHack Carpentry Connect Manchester",
                     account = "annakrystalli", appFiles = c("index.Rmd", ".httr-oauth", "reprohack.css",
                                                                    "CCmcrlogo.png"))
      ```
- [ ] Edit and upload `slides.md` containing the introductory to [hackmd.io](https://hackmd.io/) and [set to slide view](https://hackmd.io/s/features#Import-Notes).
    - [ ] update slides url in the `README.md` agenda

### You now have all the materials to run a ReproHack setup! 🎉

<br>

**Got suggestions on improving the materials/workflow? Have a look at [our plans so far]() and feel free to contribute your feedback!**

#### [Other sources of papers with code and data.](https://github.com/reprohack/reprohack-hq/issues/11)

<br>

***

## Other ways to ReproHack
![](assets/workflow.png)
