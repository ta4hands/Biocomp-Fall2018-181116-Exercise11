# Usage: bash HW11-prob1.sh
# Completes problem 1

# Add newline characters to end of all fasta files so that carrots don't appear
# mid-line when combining files. This allows xx to run properly.
sed -i -e '$a\' *.fasta

# Combine all sporecoat files into one
cat sporecoat* > allsporecoat.fasta

# Combine all transporter files into one
cat transporter* > alltransporter.fasta

# Use muscle to allign sporecoat data
/afs/nd.edu/user30/aquattro/local/bin/muscle -in allsporecoat.fasta -out alligned-sporecoat.fasta

# Use muscle to allign transporter data
/afs/nd.edu/user30/aquattro/local/bin/muscle -in alltransporter.fasta -out alligned-transporter.fasta
