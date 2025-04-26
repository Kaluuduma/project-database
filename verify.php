<h1>Verify Transfer</h1>

<?php if (session()->getFlashdata('msg')): ?>
    <p style="color: red;"><?= session()->getFlashdata('msg') ?></p>
<?php endif; ?>

<form method="post" action="/user/verify">
    <label for="otp">Enter OTP:</label>
    <input type="text" name="otp" id="otp" required>

    <button type="submit" name="verify_otp">Verify OTP</button>
</form>