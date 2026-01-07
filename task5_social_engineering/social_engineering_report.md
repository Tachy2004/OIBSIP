# Social Engineering Attacks: Techniques, Impact, and Prevention

## Executive Summary

Social engineering attacks continue to be one of the primary causes of security incidents, not because of advanced malware, but due to weaknesses in organisational processes and human decision-making. Industry breach data consistently shows that phishing and pretexting are responsible for the majority of initial access events, particularly in financially motivated attacks such as Business Email Compromise (BEC).

This report analyses common social engineering techniques, examines real-world incidents that demonstrate their organisational impact, and presents practical, risk-focused recommendations. The findings show that organisations relying solely on awareness training without strong verification and governance controls remain highly vulnerable.

---

## 1. Overview of Social Engineering Attacks

Social engineering refers to attack techniques that manipulate individuals into performing actions or disclosing information that undermines security. Unlike technical exploits, these attacks target trust relationships, business workflows, and assumptions embedded in daily operations.

According to the Verizon Data Breach Investigations Report (DBIR), the majority of breaches involving social engineering begin with phishing, followed by the abuse of legitimate credentials obtained through deception rather than exploitation of software vulnerabilities [1].

---

## 2. Primary Social Engineering Techniques

### 2.1 Phishing

Phishing involves deceptive emails, messages, or websites designed to trick users into revealing credentials or executing malicious actions. Variants include:

- **Spear phishing:** Targeted attacks focused on specific individuals or roles.
- **Whaling:** Executive-focused phishing, often linked to financial fraud.
- **Smishing and vishing:** SMS- and voice-based phishing attacks.

Verizon DBIR data consistently shows phishing as the most common initial access vector in confirmed breaches [1].

---

### 2.2 Pretexting

Pretexting involves attackers creating a credible scenario or assumed identity (e.g., IT support, finance leadership, vendors) to extract sensitive information or authorise actions. Unlike phishing, pretexting often bypasses technical controls by exploiting trust in internal processes.

The FBI reports that BEC attacks, which rely heavily on pretexting, caused over USD 2.9 billion in reported losses in 2023 alone, making it the most financially damaging cybercrime category [2].

---

### 2.3 Baiting

Baiting exploits curiosity or incentive by offering something desirable, such as free software, removable media, or access to exclusive content. Engagement often results in malware execution or credential harvesting.

Although less prevalent than phishing or BEC, baiting remains effective in environments with poor device control or removable media policies [3].

---

## 3. Real-World Case Studies

### 3.1 Ubiquiti Networks — Business Email Compromise

In 2015, Ubiquiti Networks disclosed a loss of approximately USD 46.7 million after attackers impersonated company executives and issued fraudulent wire transfer requests. The incident succeeded due to the absence of secondary verification for financial transactions and an overreliance on email-based trust [4].

**Key failure:** Lack of out-of-band verification and segregation of duties.

---

### 3.2 Google and Facebook — Invoice Fraud via Pretexting

Between 2013 and 2015, attackers impersonated a legitimate hardware supplier and sent fraudulent invoices to Google and Facebook, resulting in over USD 100 million in losses. The attack exploited weaknesses in supplier verification and invoice approval processes rather than technical vulnerabilities [5].

**Key failure:** Inadequate supplier authentication controls.

---

### 3.3 Twitter (X) — Employee Social Engineering Attack (2020)

Attackers socially engineered Twitter employees with access to internal tools, leading to the compromise of high-profile accounts. The incident demonstrated how privileged access combined with insufficient role-based restrictions can magnify the impact of social engineering [6].

**Key failure:** Excessive internal access and insufficient privilege separation.

---

## 4. Organisational Impact

The impact of social engineering attacks varies by technique:

- **BEC and pretexting:** Direct financial loss and regulatory exposure.
- **Phishing:** Credential compromise leading to lateral movement and ransomware.
- **Baiting:** Malware infection and endpoint compromise.

ENISA identifies social engineering as a key enabler of ransomware and supply chain attacks, amplifying both financial and operational damage [3].

---

## 5. Prevention and Mitigation Strategies

### 5.1 Awareness and Training

Security awareness training should be role-specific and reinforced through regular phishing simulations. Organisations should track failure rates and focus additional training on high-risk roles such as finance staff and executive assistants.

---

### 5.2 Verification and Process Controls

- Enforce dual authorisation for financial transactions.
- Require out-of-band verification for payment or account detail changes.
- Document and audit exception-handling procedures.

The FBI identifies strong verification processes as the most effective control against BEC attacks [2].

---

### 5.3 Technical Controls

- Enforce multi-factor authentication (MFA) for all remote and privileged access.
- Deploy DMARC, SPF, and DKIM to reduce email spoofing.
- Use email security gateways and endpoint protection platforms.

Microsoft reports that MFA can prevent the majority of credential-based attacks when properly implemented [7].

---

### 5.4 Incident Response and Monitoring

Social engineering scenarios should be incorporated into incident response plans and tabletop exercises. Early reporting and rapid response significantly reduce financial and operational impact.

---

## 6. Conclusion

Social engineering attacks persist because they exploit organisational assumptions rather than technical weaknesses. Training alone is insufficient. Effective defence requires governance-driven verification, measurable controls, and continuous reinforcement of secure business processes.

Organisations that treat social engineering as a process and risk management problem — rather than solely a user behaviour issue — are significantly more resilient to modern attacks.

---

## References

[1] Verizon, *2024 Data Breach Investigations Report*, Verizon Enterprise.  
[2] FBI IC3, *2023 Internet Crime Report*, Federal Bureau of Investigation.  
[3] ENISA, *Threat Landscape 2023*, European Union Agency for Cybersecurity.  
[4] Ubiquiti Networks, *SEC Form 8-K Disclosure*, 2017 
[5] Twitter, *Form 8-K Security Incident Disclosure*, 2020.  
[6] Microsoft, *Digital Defense Report 2023*.