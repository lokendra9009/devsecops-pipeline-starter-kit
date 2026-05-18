.PHONY: scan report demo clean

scan:
	@echo "Running security scans..."
	@echo "TODO: Add Gitleaks, Trivy, Semgrep commands here"

report:
	python scripts/generate_report.py

demo: scan report
	@echo "Demo completed. Check reports/security-report.md"

clean:
	rm -f reports/security-report.md