package util;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class ContactValidator {

	public static Map<String, String> validate(String name, String email, String phone, String subject, String message,
			String privacy) {
		Map<String, String> errors = new HashMap<>();

		// Validar nome
		if (name == null || name.trim().isEmpty()) {
			errors.put("name", "O nome é obrigatório.");
		} else if (name.trim().length() < 3) {
			errors.put("name", "O nome deve ter pelo menos 3 caracteres.");
		}

		// Validar email
		if (email == null || email.trim().isEmpty()) {
			errors.put("email", "O email é obrigatório.");
		} else {
			String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
			if (!Pattern.matches(emailRegex, email.trim())) {
				errors.put("email", "Digite um email válido.");
			}
		}

		// Validar assunto
		if (subject == null || subject.trim().isEmpty()) {
			errors.put("subject", "O assunto é obrigatório.");
		}

		// Validar mensagem
		if (message == null || message.trim().isEmpty()) {
			errors.put("message", "A mensagem é obrigatória.");
		} else if (message.trim().length() < 10) {
			errors.put("message", "A mensagem deve ter pelo menos 10 caracteres.");
		}

		// Validar checkbox de privacidade
		if (privacy == null) {
			errors.put("privacy", "Deve aceitar a política de privacidade.");
		}

		// Telefone é opcional, não precisa validar

		return errors;
	}
}