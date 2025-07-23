public with sharing class TicketPriorityController {

    @AuraEnabled
    public static String sugerirPrioridad(String categoria, String urgencia) {
        if (urgencia == 'Alta' && categoria != 'Otro') {
            return 'High';
        } else if (urgencia == 'Media') {
            return 'Medium';
        } else {
            return 'Low';
        }
    }
}