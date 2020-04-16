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

The collection contains some inofficial domain reformulations which we
do not recommend for paper experiments:

  * no-mprime and no-mystery are copies of mprime and mystery but with
    speaking predicate names.
  * pathways-noneg is identical to pathways but without negative
    preconditions.
