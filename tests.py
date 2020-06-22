# -*- coding: utf-8 -*-

from __future__ import print_function

from collections import Counter
import os

import suites
from suites import *


REPO = os.path.abspath(os.path.dirname(__file__))


def _get_domains():
    return sorted(
        domain
        for domain in os.listdir(REPO)
        if os.path.isdir(os.path.join(REPO, domain)) and
        not domain.startswith((".", "_")) and
        domain != "unofficial-reformulations")


def test_for_duplicates():
    for funcname in dir(suites):
        if not funcname.startswith('suite_'):
            continue
        print('Test', funcname)
        func = getattr(suites, funcname)
        domains = func()
        assert domains == sorted(domains)
        assert len(set(domains)) == len(domains), Counter(domains)


def test_suite_satisficing():
    assert (
        set(suite_satisficing_adl() + suite_satisficing_strips()) ==
        set(suite_ipc98_to_ipc04() + suite_ipc06() +
            suite_ipc06_strips_compilations() + suite_ipc08_sat() +
            suite_ipc11_sat() + suite_ipc14_sat() + suite_ipc18_sat()))


def test_suite_optimal():
    assert (
        set(suite_optimal_adl() + suite_optimal_strips()) ==
        set(suite_ipc98_to_ipc04() + suite_ipc06() +
            suite_ipc06_strips_compilations() + suite_ipc08_opt() +
            suite_ipc11_opt() + suite_ipc14_opt() + suite_ipc18_opt()))


def test_paths_exist():
    suite_funcs = [
        getattr(suites, funcname) for funcname in dir(suites)
        if funcname.startswith("suite_")]
    for func in suite_funcs:
        suite = func()
        for part in suite:
            path = os.path.join(REPO, part.replace(":", "/"))
            if not os.path.exists(path):
                print("Error: {} could not be found for {}.".format(
                    part, func.__name__))


def test_all_domains_covered():
    assert set(suite_all()) == set(_get_domains())


def test_file_endings():
    for path in _get_domains():
        for filename in sorted(os.listdir(path)):
            assert filename.endswith(".pddl"), (path, filename)


def test_all_domains_in_domain_to_tags():
    assert set(DOMAIN_TO_TAGS.keys()) == set(_get_domains())
