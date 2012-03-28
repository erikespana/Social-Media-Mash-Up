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
	
### History ###
* [Chatter Feed 2.1] (http://muse.union.edu/espanae/2011/12/06/chatter-feed-2-1/)
* [Chatter Feed 2.0] (http://bit.ly/tvS7Py)

### Credits ###
My thanks to Lee Roberson (Northwestern U) for providing [key technical insight]  (http://help.hannonhill.com/discussions/how-do-i/397-how-to-aggregate-multiple-rss-feeds) without which this project would never have happened.