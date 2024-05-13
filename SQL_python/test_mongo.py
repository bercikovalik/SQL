from pymongo import MongoClient
import certifi

uri = "mongodb+srv://kovalikdberci:123@cluster0.h5de4hj.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
# Create a new client and connect to the server with SSL certificate verification
client = MongoClient(uri, tlsCAFile=certifi.where())

# Send a ping to confirm a successful connection
try:
    client.admin.command('ping')
    print("Pinged your deployment. You successfully connected to MongoDB!")
except Exception as e:
    print(f"Failed to connect: {e}")


db = client['Python_project']
collection_to_clear = db.Orders # Replace 'Products' with the name of your collection

# Delete all documents in the collection
result = collection_to_clear.delete_many({})

# Print the result of the deletion
print(f"Documents deleted: {result.deleted_count}")