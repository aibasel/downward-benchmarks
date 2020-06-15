Fast Downward benchmark collection
==================================

An inofficial collection of (sequential) IPC benchmark instances.

suites.py contains many predefined benchmark suites such as
"optimal_strips", "satisficing", or "all". To obtain the
corresponding domain list for your experiments you can run

    ./suites.py optimal_strips

Please note that some IPC 2014 domains from the satisificing (sat)
track were also used in the multicore (mco) and agile (agl) tracks.
Please consult suites.py for the full domain lists of these two tracks.

Previously, the collection also contained three inofficial domain
reformulations:

  * no-mprime and no-mystery are copies of mprime and mystery but with
    speaking predicate names.
  * pathways-noneg is identical to pathways but without negative
    preconditions.

We recommend against using these formulations in paper experiments. If
you want to use them nevertheless, you can find them at revision
9f83aef.
