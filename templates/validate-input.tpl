{{ if empty .Values.argo.app_of_apps.name }}
  {{ fail "VALUE: 'argo.app_of_apps.name' is required!" }}
{{ end }}

{{ if empty .Values.argo.app_of_apps.repo.url }}
  {{ fail "VALUE: 'argo.app_of_apps.repo.url' is required!" }}
{{ end }}

{{ if empty .Values.argo.app_of_apps.repo.target_revision }}
  {{ fail "VALUE: 'argo.app_of_apps.repo.target_revision' is required!" }}
{{ end }}