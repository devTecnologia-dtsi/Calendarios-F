export const environment = {
    production: true,
    // URL base del backend de la aplicación
    apiUrl: 'https://calendarios.uniminuto.edu/api/',

    // URL de redirección del frontend (app Angular)
    baseUrl: 'https://calendarios.uniminuto.edu',

    // Configuración de MSAL para autenticación con Azure AD
    clientId: 'a01195af-ceac-41e3-8a2c-1274b0181b1f',
    authority: 'https://login.microsoftonline.com/b1ba85eb-a253-4467-9ee8-d4f8ed4df300',
    redirectUri: 'https://calendarios.uniminuto.edu/login'
};
