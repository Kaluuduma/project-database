<div class="container">
    <h3>Enter OTP</h3>
    <p>An OTP has been sent to your registered email address. Please enter it below to complete your transfer.</p>
    <form method="POST" action="<?= base_url('user/verify_transfer') ?>">
        <input type="hidden" name="ref" value="<?= $ref ?>">
        <div class="form-group">
            <label for="otp">One-Time Password (OTP)</label>
            <input type="text" class="form-control" name="otp" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>