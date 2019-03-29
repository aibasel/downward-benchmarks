#! /usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import os
import os.path
import shutil

import suites

HELP = """Copy a suite of domains to a given directory."""


def parse_args():
    parser = argparse.ArgumentParser(description=HELP)
    parser.add_argument(
        "suite", choices=suites.get_suite_names(),
        help="name of a suite of domains")
    parser.add_argument('dest', help="destination directory")
    return parser.parse_args()


def main():
    args = parse_args()
    if not os.path.exists(args.dest):
        os.makedirs(args.dest)
    for domain in suites.get_suite(args.suite):
        domain_dest = os.path.join(args.dest, domain)
        print("Copy {} to {}".format(domain, domain_dest))
        shutil.copytree(domain, domain_dest)


if __name__ == "__main__":
    main()
