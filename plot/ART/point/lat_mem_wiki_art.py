import sys
import matplotlib as mpl
import matplotlib.pyplot as plot
import matplotlib.ticker as ticker
import matplotlib.cm as cm
import numpy as np

import csv

NAMES = ["Uncompressed", "Single", "Double", "3-Grams, 8192", "3-Grams, 65536", "4-Grams, 8192", "4-Grams, 65536"]
LABELS = ["Uncompressed", "Single", "Double", "3-Grams", "4-Grams"]

COLORS = ['#fef0d9', '#fdcc8a', '#fc8d59', '#e34a33', '#b30000']
#COLORS = ['#fef0d9', '#fdd49e', '#fdbb84', '#fc8d59', '#e34a33', '#b30000']

BACKCOLORS = ['#fff7fb', '#ece7f2', '#d0d1e6', '#a6bddb', '#74a9cf', '#3690c0', '#0570b0', '#045a8d', '#023858']

SIZE = 100

X_LABEL = "Latency (us)"
Y_LABEL = "Memory(MB)"
X_LABEL_FONT_SIZE = 20
Y_LABEL_FONT_SIZE = 20

X_TICK_FONT_SIZE = 18
Y_TICK_FONT_SIZE = 18

X_LIMIT = 1.5
Y_LIMIT = 600

LEGEND_FONT_SIZE = 16
LEGEND_POS = 'upper left'

GRAPH_HEIGHT = 5 #inches
GRAPH_WIDTH = 8 #inches

CSV_X_FILE_PATH = "results/ART/point/lat_wiki_art.csv"
CSV_Y_FILE_PATH = "results/ART/point/mem_wiki_art.csv"
GRAPH_OUTPUT_PATH = "figures/ART/point/lat_mem_wiki_art_point.pdf"

f_in_x = open(CSV_X_FILE_PATH)
reader = csv.reader(f_in_x)
csvrows = list(reader)
data_x = []
for row in csvrows :
    for item in row :
        data_x.append(float(item))

f_in_y = open(CSV_Y_FILE_PATH)
reader = csv.reader(f_in_y)
csvrows = list(reader)
data_y = []
for row in csvrows :
    for item in row :
        data_y.append(float(item))

#========================================================================================
mpl.rcParams['ps.useafm'] = True
mpl.rcParams['pdf.use14corefonts'] = True
mpl.rcParams['text.usetex'] = True

mpl.rcParams['text.latex.preamble'] = [
       r'\usepackage{siunitx}',   # i need upright \micro symbols, but you need...
       r'\sisetup{detect-all}',   # ...this to force siunitx to actually use your fonts
       r'\usepackage{helvet}',    # set the normal font here
       r'\usepackage{sansmath}',  # load up the sansmath so that math -> helvet
       r'\sansmath'               # <- tricky! -- gotta actually tell tex to use!
]
#========================================================================================

fig = plot.figure(figsize={GRAPH_HEIGHT, GRAPH_WIDTH})
ax = fig.add_subplot(111)

product_max = X_LIMIT * Y_LIMIT * 0.9
product_min = 3
product_diff = product_max - product_min

x_array = []
x = 0.001
while x < X_LIMIT :
    x_array.append(x)
    x += 0.001
x_list = np.array(x_array)

y_lists = []
num_ranges = 9
for i in range(0, num_ranges) :
    y_list = (product_min + (product_diff + 0.0) / num_ranges * i) / x_list
    y_lists.append(y_list)

ax.fill_between(x_list, 0, y_lists[0], facecolor=BACKCOLORS[0], edgecolor=BACKCOLORS[0])
for i in range(0, len(y_lists)-1) :
    ax.fill_between(x_list, y_lists[i], y_lists[i+1], facecolor=BACKCOLORS[i+1], edgecolor=BACKCOLORS[i+1])

ax.scatter(data_x[0], data_y[0], s=SIZE, c=COLORS[0], marker='o', label=NAMES[0])
ax.scatter(data_x[1], data_y[1], s=SIZE, c=COLORS[1], marker='o', label=NAMES[1])
ax.scatter(data_x[2], data_y[2], s=SIZE, c=COLORS[2], marker='o', label=NAMES[2])
ax.scatter(data_x[3], data_y[3], s=SIZE, c=COLORS[3], marker='o', label=NAMES[3])
ax.scatter(data_x[4], data_y[4], s=SIZE, c=COLORS[3], marker='s', label=NAMES[4])
ax.scatter(data_x[5], data_y[5], s=SIZE, c=COLORS[4], marker='o', label=NAMES[5])
ax.scatter(data_x[6], data_y[6], s=SIZE, c=COLORS[4], marker='s', label=NAMES[6])

ax.set_xlabel(X_LABEL, fontsize=X_LABEL_FONT_SIZE, weight='bold')
ax.set_xlim(0, X_LIMIT)

ax.set_ylabel(Y_LABEL, fontsize=Y_LABEL_FONT_SIZE, weight='bold')
ax.set_ylim(0, Y_LIMIT)

x_ticks = [0, 0.3, 0.6, 0.9, 1.2, 1.5]
ax.set_xticks(x_ticks)
ax.tick_params(axis='x', labelsize=X_TICK_FONT_SIZE)

y_ticks = [0, 150, 300, 450, 600]
ax.set_yticks(y_ticks)
ax.tick_params(axis='y', labelsize=Y_TICK_FONT_SIZE)

#ax.grid()

ax.annotate(LABELS[0], (data_x[0], data_y[0] * 1.1), ha='center', va='center', size=16)
ax.annotate(LABELS[1], (data_x[1], data_y[1] * 1.08), ha='center', va='center', size=16)
ax.annotate(LABELS[2], (data_x[2], data_y[2] * 0.9), ha='center', va='center', size=16)
ax.annotate(LABELS[3], ((data_x[3] + data_x[4])/2, data_y[4] * 0.9), ha='center', va='center', size=16)
ax.annotate(LABELS[4], ((data_x[5] + data_x[6])/2 * 1.05, data_y[6] * 0.9), ha='center', va='center', size=16)

#ax.legend(loc=LEGEND_POS, prop={'size':LEGEND_FONT_SIZE}, scatterpoints=1)

#ax.text(160, 450, "better", size=26, va="center", ha="center", rotation=45,
#        bbox=dict(boxstyle="larrow,pad=0.5", fc="w", ec="k", lw=2))

plot.savefig(GRAPH_OUTPUT_PATH, bbox_inches='tight')
