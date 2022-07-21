#!/usr/bin/env python3
"""
Create dictionary objects from badcat lists.
Create a dictionary of { errortype : [list_of_works] }
Invert the dictionary, to show:
{ work: [list_of_error_types }
"""

import sys
import csv

def csv_dict(text: [], out_path: str, headings: []):
    """
    Writes a dictionary to a csv
    :param a_dict: object to write
    :param out_path: output file
    :return:
    """

    with open (out_path, 'w') as fd:
        csv_wr = csv.DictWriter(fd, delimiter='\t', fieldnames=headings)
        csv_wr.writeheader()
        csv_wr.writerows(text)


error_dict: {} = {}
key_line: str = None
with open (sys.argv[1], 'r', newline='\n') as data_file:
    for line in data_file:
        line = line.strip()

        if not line.startswith("bdrc"):
            key_line = line
            error_dict[line] = []
        else:
            error_dict[key_line].append(line)

error_list: [] = [ { 'Error': di, 'works' : error_dict[di]} for di in error_dict.keys()]
csv_dict(error_list, "works_by_error.tsv", ['Error', 'works'])

# print(error_dict)


# Now prepare an inversion
error_inversion: {} = {}
for di in error_dict.keys():
    di_works: [] = error_dict[di]
    for di_work in di_works:
        if not di_work in error_inversion.keys():
            error_inversion[di_work] = []
        error_inversion[di_work].append(di)

inv_list: [] = [{ 'work': di, 'Errors' : error_inversion[di]} for di in error_inversion.keys()]
csv_dict(inv_list, "errors_by_work.tsv", ['work', 'Errors'])
# for ei in error_inversion:
#     print(ei)

