# vps-rectitude
(currently a placeholder, no code yet)

Virtual private servers are cost-effective versus dedicated, but whether you'll consistently get the specs your ISP advertises is dependent on things you don't know, such as how many other VPS users they crammed onto a single server, all fighting for the same resources. A VPS from a good ISP is hard to distinguish from a dedicated server, whereas a VPS from an ISP cutting too many corners, depending on your needs, can be worthless. Or you may have a good ISP, but by chance the few users sharing your server are doing unusually-intensive things. 

VPS Rectitude, pretending it exists which it only does in my imagination at this point, performs a handful of benchmarks X times a day for Y days examining network, disk and ram i/o using existing scripts, and then goes on to calculate linear regretions of those data points over time. The greater the individual and net simple linear regressions, the more you should consider taking your business elsewhere, or going dedicated, colo, whatever. 

Ideally you'd install and run this on a server that's fresh and idle over the course of a week or at least a weekday. The more things you're already using your VPS to do and/or the shorter duration you let VPS Rectitude work the more inaccurate it becomes, ie the less actionable the information that it yields. 

As for the benchmarking of the various resources, not the comparisons, depending on what already exists and licensing, I may incorporate others rather than reinventing the wheel, otherwise I'll write my own. 

Status: The idea just popped into my head, haven't decided which language to use, but wanted to start an empty repo with a rundown readme. Will add updates to the readme if any progress is made, for example maybe figuring out a better name for the project. 
