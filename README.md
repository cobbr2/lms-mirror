Intended to manage the setup scripts (probably terraform eventually?)
for my LMS servers.  The goal is that we run fully-redundant LMS servers
on `sounds` & `newsounds`, where content is sync'ed betweent them.

I'm also questioning the isolation of music from other media, or
even random files.  Targetting a completely redundant 
NAS-ish setup might be cleanest; at the moment sounds has 
the far more reliable Samba setup of the two. Hmm.

First iteration goal:
* Squeeze devices should automatically get `newsounds`, and if
  it's not available, fall back to `sounds`.

Second iteration:
* Player settings should be the same for all LMS servers. In particular,
  volume control should always be enabled.
* When `newsounds` recovers, the players should move to it 
  in a way that doesn't cause synchronization or volume problems
  (sometimes LMS forgets player settings and a takeover
  will blare at 100% volume).
