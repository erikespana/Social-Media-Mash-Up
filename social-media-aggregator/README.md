# Social Media Aggregator (Chatter Feed) 2.1 #

System requirements: Cascade Server 6.10 with Velocity 1.7

* **feed-aggregator.xml (Data Definition)**
	
	This is the data definition for the Structured Data Block(s).
* **feed-block-aggregator.vm**
	
	Parses a Structured Data Block and returns an XML feed of each Feed Block's most recent status update.    
	Feed Blocks supported:
    * WordPress RSS 0.92, 2.0
    * [Facebook RSS] (http://bit.ly/gettingfacebookfeeds)
    * [Twitter API user_timeline XML] (http://bit.ly/twiterapirest)
    * [Other chatter feeds] (http://muse.union.edu/espanae/2011/12/06/chatter-feed-2-1/)
	
### How to add a social media feed ###
* Create a new Feed Block and enter the feed's URL.
* Add the Feed Block to the Structured Data Block.
	* Create a new "Feed" group.
	* Select the previously created Feed Block using the block chooser.
	* Leave Mute = No unless you want to ignore the Feed Block.
	* Submit

### History ###
* [Chatter Feed 2.1] (http://muse.union.edu/espanae/2011/12/06/chatter-feed-2-1/)
* [Chatter Feed 2.0] (http://bit.ly/tvS7Py)