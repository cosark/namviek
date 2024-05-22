#!/bin/sh
set -e

# Run yarn generate2 if needed
yarn generate2

# Wait for the database to be ready if necessary

# Apply database migrations
yarn prisma db push --schema=./packages/shared-models/src/prisma/schema.prisma


# Execute the CMD from the Dockerfile, e.g., starting the frontend.
exec "$@"
