# Organiser Instructions

We are working to make materials more reusable and easier to reproduce to make ReproHacks easy to run and scale. 

The current approach uses shiny and googledocs to compile a list of papers and collect feedback for the authors. This approach comes with limitations:

- Requirement to authenticate with googledocs
- Requirement to have a shinyapps.io account or access to a shiny server/institutional shinyapps.io account. Although it is easy to set up a shinyapps.io account, there is a cap on the amount of traffic to the app allowed in the free account and upgrading the subscription to run an event might be required.
- Currently, distributing feedback to the authors is not automated, although it could be set up as a js script attached to the feedback googlesheet
- Overall, the materials feel like they are too spread out.

As such we well be developing a system that is fully open and relies solely on GitHub for compiling and serving paper lists as well as tracking reproductions and participant feedback. In the meantime, however, the templates for running a ReproHack using the current method are available in the [**`reprohack-template-shiny`**](https://github.com/reprohack/reprohack-template-shiny) repo.


## Organiser checklist

- [ ] Copy template repository [**`reprohack-template-shiny`**](https://github.com/reprohack/reprohack-template-shiny)
- [ ] Make copies of the two googleforms, one for collecting paper submissions and one for collecting feedback
    + [paper submission form](https://drive.google.com/open?id=1-Q-dQQu47ytCg2Z7F99hzCSxewLCbPUi8UlZWg0JYjI)
    + [author feedback form](https://drive.google.com/open?id=1KRooOAtbmOzIES1h2T9Gvt7AaPFLDS0BQUZRiimJZSU)
- [ ] Create a hackpad (eg etherpad, hack.md, googledoc) for collaborative notetaking at the event (optional)
    + you can use this [hackmd.io template](https://hackmd.io/@annakrystalli/reprohack-hackpad-tmpl) if you wish


![](assets/workflow.png)