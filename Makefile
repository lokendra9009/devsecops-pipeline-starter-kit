.PHONY: help scan scan-secrets report demo clean

RAW_REPORT_DIR=reports/raw

help:
	@echo "Available commands:"
	@echo "  make scan-secrets  Run Gitleaks secret scan"
	@echo "  make scan          Run all configured security scans"
	@echo "  make report        Generate consolidated security report"
	@echo "  make demo          Run scans and generate report"
	@echo "  make clean         Remove generated reports"

scan-secrets:
	@echo "Running Gitleaks secret scan..."
	@mkdir -p $(RAW_REPORT_DIR)
	gitleaks dir . \
		--report-format json \
		--report-path $(RAW_REPORT_DIR)/gitleaks.json \
		--redact
	@echo "Gitleaks report saved to $(RAW_REPORT_DIR)/gitleaks.json"

scan: scan-secrets
	@echo "Security scans completed."

report:
	python scripts/generate_report.py

demo: scan report
	@echo "Demo completed. Check reports/security-report.md"

clean:
	rm -f reports/security-report.md
	rm -f reports/raw/*.json