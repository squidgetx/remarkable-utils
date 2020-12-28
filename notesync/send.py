from rmapy.api import Client
from rmapy.document import ZipDocument, Document

FILENAME = 'notes.pdf'

rmapy = Client()

# This registers the client as a new device. The received device token is
# stored in the users directory in the file ~/.rmapi, the same as with the
# go rmapi client.
# rmapy.register_device("kmdfhcsf")

rmapy.renew_token()

rawDocument = ZipDocument(doc=FILENAME)

collection = rmapy.get_meta_items()

# Gather old versions to delete
old = [f for f in collection if isinstance(
    f, Document) and f.VissibleName == 'notes']

rmapy.upload(rawDocument)

for f in old:
    rmapy.delete(f)
