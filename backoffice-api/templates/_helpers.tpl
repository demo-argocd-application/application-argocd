{{- define "backoffice-api.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "backoffice-api.labels" -}}
app.kubernetes.io/name: {{ include "backoffice-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "backoffice-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "backoffice-api.name" . }}
{{- end }}

{{- define "backoffice-api.serviceAccountName" -}}
{{ default "default" .Values.serviceAccount.name }}
{{- end }}

{{- define "backoffice-api.name" -}}
{{ .Chart.Name }}
{{- end }}
