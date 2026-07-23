Fast Downward benchmark collection
==================================

An unofficial collection of (sequential) IPC benchmark instances.

suites.py contains many predefined benchmark suites such as
"optimal_strips", "satisficing", or "all". To obtain the
corresponding domain list for your experiments you can run

    ./suites.py optimal_strips

Please note that some IPC 2014 domains from the satisificing (sat)
track were also used in the multicore (mco) and agile (agl) tracks.
Please consult suites.py for the full domain lists of these two tracks.

Notes on changes per domain
-------------------------

- **mprime**: In contrast to the original mprime domain, our version forbids
artificially generating additional fuel.

- **maintenance-opt14-adl**: We removed predicates specified twice in the
initial state.

- **assembly**: We removed predicates that were specified twice in the initial
state.

Unofficial Reformulations
-------------------------

Under "unofficial-reformulations", we collect unofficial domain
reformulations that are not recommended for paper experiments but have
been useful for debugging purposes:

  * mprime-renamed is a copy of mprime but with speaking predicate names.
    Also, in mprime-renamed it is possible to artificially generate fuel
    (as in the original IPC domain).
  * mystery-renamed is a copy of mystery but with speaking predicate
    names.
