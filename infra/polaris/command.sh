polaris --client-id root \
  --client-secret secret \
  --realm POLARIS \
  setup apply ./trino_user.yaml

polaris --client-id root --client-secret secret --realm POLARIS \
  privileges list \
  --catalog lakehouse \
  --catalog-role trino_writer_cr

polaris --client-id root \
  --client-secret secret \
  --realm POLARIS \
  principals reset trino_user \
  --new-client-id trino_user \
  --new-client-secret 'TrinoUser-NewSecret-2026!'