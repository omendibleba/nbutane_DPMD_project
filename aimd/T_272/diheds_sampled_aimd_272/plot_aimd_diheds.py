# Script to read all the dihedral seen in the AIMD simulation. 40,000 frames x 6 molecules x 1 dihedral = 240,000 data points

import matplotlib.pyplot as plt
import numpy as np

# read text file containing dihedral data
data = np.loadtxt('aimd/dihedrals_aimd_272K.txt')

# plot histogram of dihedral data
plt.figure(figsize=(10, 8), facecolor='white')
plt.hist(data, bins=20, range=(-180,180))
plt.xlabel('Dihedral angle (degrees)',fontsize=16,fontweight='bold')
plt.ylabel('Frequency',fontsize=16,fontweight='bold')
plt.title('Dihedral angle distribution for 6butane at 272K',fontsize=18,fontweight='bold')
plt.yscale('log')
plt.xticks(fontsize=14)
plt.yticks(fontsize=14)
plt.savefig('AIMD_20ps_6but_272K',dpi=300)
plt.show()